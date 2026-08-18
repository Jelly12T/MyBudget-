//
//  WeeklySummaryChart.swift
//  MyBudget
//
//  Created by kalapa on 11/8/26.
//

import SwiftUI
import Charts

struct ToyShape: Identifiable {
    var type: String
    var count: Double
    var id = UUID()
}

struct WeeklySummaryChart: View {
    
    var data: [ToyShape] = [
        .init(type: "Cube", count: 5),
        .init(type: "Sphere", count: 4),
        .init(type: "Pyramid", count: 4)
    ]
    
    @State private var selectedValue: String?
    
    var body: some View {
        Chart {
            ForEach(data) { item in
                BarMark(
                    x: .value("Shape Type", item.type),
                    y: .value("Total Count", item.count)
                )
                .annotation(position: .top) {
                    Text("\(Int(item.count))")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundStyle(self.selectedValue == item.type
                                         ? Color.white : AppColors.chartDefault)
                }
                .foregroundStyle(
                    self.selectedValue == item.type
                    ? AppColors.primaryColor
                    : AppColors.chartDefault
                )
            }
        }
        .chartXAxis {
            AxisMarks { value in
                AxisGridLine()
                    .foregroundStyle(.clear)
                AxisValueLabel()
                    .foregroundStyle(value.as(String.self) == self.selectedValue
                                     ? Color.white : AppColors.chartDefault)
                    .font(.system(size: 14, weight: .semibold))
            }
        }
        .chartYAxis(.hidden)
        .padding(6)
        .background(.clear)
        .chartOverlay { proxy in
            GeometryReader { _ in
                Rectangle()
                    .fill(.clear)
                    .contentShape(Rectangle())
                    .onTapGesture { point in
                        guard let type: String = proxy.value(atX: point.x) else {
                            return
                        }
                        
                        self.selectedValue = type
                    }
            }
        }
    }
}

#Preview {
    WeeklySummaryChart(data: [.init(type: "Cube", count: 5),
                              .init(type: "Sphere", count: 4),
                              .init(type: "Pyramid", count: 4)])
}
