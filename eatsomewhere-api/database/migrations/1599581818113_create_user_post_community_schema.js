'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class CreateUserPostCommunitySchema extends Schema {
  up () {
    this.create('create_user_post_communities', (table) => {
      table.increments()
      table.timestamps()
    })
  }

  down () {
    this.drop('create_user_post_communities')
  }
}

module.exports = CreateUserPostCommunitySchema
