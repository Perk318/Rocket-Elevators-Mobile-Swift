//
//  ListView.swift
//  Rocket-Elevators-Mobile-Swift
//
//  Created by Student on 1/4/23.
//

import SwiftUI

struct Response: Codable{
    var results: [Elevator]
}

struct Elevator: Codable{
    var columnId: Int
    var id: Int
    var serialNumbers: String
    var model: String
    var buildingType: String
    var status: String
    var dateOfCommmisioning: String
    var dateOfLastInspection: String
    var information: String
    var certificationOfInspection: String
    var notes: String
    var createdAt: String
    var updatgedAt: String
    var column: String
    var interventions: [String]
}

struct ListView: View{
    
    @State private var elevators: [Elevator] =
    [Elevator(columnId: 1, id: 1, serialNumbers: "5493117", model: "standard", buildingType: "residential", status: "online", dateOfCommmisioning: "03-20-2020", dateOfLastInspection: "05-20-2022", information: "Gtr35", certificationOfInspection: "Doctorate degree", notes: "MotorSwap", createdAt: "11-16-2022", updatgedAt: "11-16-2022", column: "Skyline", interventions: <#T##[String]#>),
     Elevator(columnId: 2, id: 4, serialNumbers: "5935077", model: "standard", buildingType: "corporate", status: "online", dateOfCommmisioning: "01-20-2022", dateOfLastInspection: "04-29-2022", information: "RX7", certificationOfInspection: "Some college", notes: "Stance", createdAt: "11-16-2022", updatgedAt: "11-16-2022", column: "Mazda", interventions: <#T##[String]#>),
     Elevator(columnId: 3, id: 5, serialNumbers: "1860115", model: "premium", buildingType: "commercial", status: "online", dateOfCommmisioning: "07-16-2022", dateOfLastInspection: "10-21-2022", information: "GWaggon", certificationOfInspection: "Doctorate degree", notes: "cameo wrapp", createdAt: "11-16-2022", updatgedAt: "11-16-2022", column: "Benz", interventions: <#T##[String]#>),
    ]
    
    
    
    var body: some View
    {
        List(elevators, id: \.id)
        {
            item in VStack( alignment: .leading)
            {
//                NavigationLink(destination: ContentView(index: item.id, elevators: $elevators))
                {
                    ElevatorEntry(elevator:item)
                }
            }
//            .navigationTitle(“Elevators”)
////            .navigationBarTitleDisplayMode(.inline)
//            //     .navigationBarBackButtonHidden(true)
        }
    }
}

struct ElevatorEntry: View
{
    var elevator: Elevator
    
    var body: some View
    {
        Text("Elevator: \(elevator.id.description)")
            .font(.headline)
        Text("Status: \(elevator.status)")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
