import Foundation

struct Stories : Codable {
	let available : Int?
	let collectionURI : String?
	let items : [Items]?
	let returned : Int?

	enum CodingKeys: String, CodingKey {

		case available
		case collectionURI
		case items
		case returned
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		available = try values.decodeIfPresent(Int.self, forKey: .available)
		collectionURI = try values.decodeIfPresent(String.self, forKey: .collectionURI)
		items = try values.decodeIfPresent([Items].self, forKey: .items)
		returned = try values.decodeIfPresent(Int.self, forKey: .returned)
	}

}
