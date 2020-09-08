'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class CreateStoreSchema extends Schema {
  up () {
    this.create('create_stores', (table) => {
      table.increments()
      table.timestamps()
    })
  }

  down () {
    this.drop('create_stores')
  }
}

module.exports = CreateStoreSchema
