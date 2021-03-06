# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Blogger.V3.Model.Comment do
  @moduledoc """
  

  ## Attributes

  - author (CommentAuthor):  Defaults to: `null`.
  - blog (CommentBlog):  Defaults to: `null`.
  - content (String): The actual content of the comment. May include HTML markup. Defaults to: `null`.
  - id (String): The identifier for this resource. Defaults to: `null`.
  - inReplyTo (CommentInReplyTo):  Defaults to: `null`.
  - kind (String): The kind of this entry. Always blogger#comment Defaults to: `null`.
  - post (CommentPost):  Defaults to: `null`.
  - published (DateTime): RFC 3339 date-time when this comment was published. Defaults to: `null`.
  - selfLink (String): The API REST URL to fetch this resource from. Defaults to: `null`.
  - status (String): The status of the comment (only populated for admin users) Defaults to: `null`.
  - updated (DateTime): RFC 3339 date-time when this comment was last updated. Defaults to: `null`.
  """

  defstruct [
    :"author",
    :"blog",
    :"content",
    :"id",
    :"inReplyTo",
    :"kind",
    :"post",
    :"published",
    :"selfLink",
    :"status",
    :"updated"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.Comment do
  import GoogleApi.Blogger.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"author", :struct, GoogleApi.Blogger.V3.Model.CommentAuthor, options)
    |> deserialize(:"blog", :struct, GoogleApi.Blogger.V3.Model.CommentBlog, options)
    |> deserialize(:"inReplyTo", :struct, GoogleApi.Blogger.V3.Model.CommentInReplyTo, options)
    |> deserialize(:"post", :struct, GoogleApi.Blogger.V3.Model.CommentPost, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.Comment do
  def encode(value, options) do
    GoogleApi.Blogger.V3.Deserializer.serialize_non_nil(value, options)
  end
end

