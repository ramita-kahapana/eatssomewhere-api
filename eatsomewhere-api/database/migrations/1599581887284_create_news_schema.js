'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class CreateNewsSchema extends Schema {
  up () {
    this.create('create_news', (table) => {
      table.increments()
      table.timestamps()
    })
  }

  down () {
    this.drop('create_news')
  }
}

module.exports = CreateNewsSchema
