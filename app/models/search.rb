class Search < ApplicationRecord
  self.inheritance_column = "not_sti"

  def search_book
    book = Book.all

    book = book.where(['title LIKE ?', title]) if title.present?
    book = book.where(['author LIKE ?', author]) if author.present?
    book = book.where(['press LIKE ?', press]) if press.present?

    return book
  end
end
