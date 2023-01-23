//
//  playersTests.swift
//  playersTests
//
//  Created by Rafael Tosta on 21/01/23.
//

import XCTest
@testable import players

final class PlayerListManagerTests: XCTestCase {
    // Subject under test
    private var sut: PlayerListManager!

    override func setUp() {
        // This will run before each test
        sut = PlayerListManager()
        print("Instance setup")
    }

    override func tearDown() {
        // This will run after each test
        sut = nil
        print("Instance tear down")
    }


    func testAddPlayer_ShouldAddPlayerToList() {
        let player = PlayerModel(id: 0, name: "Diego Maradona", avatarURL: "url_da_foto_do_maradona")
        sut.add(player)

        XCTAssertEqual(1, sut.list.count)
        XCTAssertEqual(player, sut.list.first)
    }

    func testGetFromIndex_WhenIndexExistsOnList_ShouldReturnPlayer() throws {
        let player = PlayerModel(id: 0, name: "Edson (Pelé)", avatarURL: "url_da_foto_do_pele")
        sut.add(player)

        let auxPlayer = try XCTUnwrap(sut.getFrom(0))
        XCTAssertEqual(player, auxPlayer)
    }

    func testGetFromIndex_WhenIndexDoesNotExistsOnList_ShouldReturnNil() {
        let player = PlayerModel(id: 0, name: "Eusebio", avatarURL: "url_da_foto_do_eusebio")
        sut.add(player)

        let auxPlayer = sut.getFrom(1)
        XCTAssertNil(auxPlayer)
    }
}
