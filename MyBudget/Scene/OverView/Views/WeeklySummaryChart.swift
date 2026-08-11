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
                        .foregroundStyle(AppColors.chartDefault)
                }
                .foregroundStyle(
                    self.selectedValue == item.type
                    ? AppColors.primaryColor
                    : AppColors.chartDefault
                )
            }
        }
        .chartXAxis {
            AxisMarks { _ in
                AxisGridLine()
                    .foregroundStyle(.clear)
                AxisValueLabel()
                    .foregroundStyle(AppColors.chartDefault)
                    .font(.system(size: 14, weight: .semibold))
            }
        }
        .chartXSelection(value: self.$selectedValue)
        .chartYAxis(.hidden)
        .padding(6)
        .background(.clear)
        
    }
}

#Preview {
    WeeklySummaryChart(data: [.init(type: "Cube", count: 5),
                              .init(type: "Sphere", count: 4),
                              .init(type: "Pyramid", count: 4)])
}
