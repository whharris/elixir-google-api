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

defmodule GoogleApi.Plus.V1.Model.PersonCover do
  @moduledoc """
  The cover photo content.

  ## Attributes

  - coverInfo (PersonCoverCoverInfo):  Defaults to: `null`.
  - coverPhoto (PersonCoverCoverPhoto):  Defaults to: `null`.
  - layout (String): The layout of the cover art. Possible values include, but are not limited to, the following values:   - \&quot;banner\&quot; - One large image banner. Defaults to: `null`.
  """

  defstruct [
    :"coverInfo",
    :"coverPhoto",
    :"layout"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Plus.V1.Model.PersonCover do
  import GoogleApi.Plus.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"coverInfo", :struct, GoogleApi.Plus.V1.Model.PersonCoverCoverInfo, options)
    |> deserialize(:"coverPhoto", :struct, GoogleApi.Plus.V1.Model.PersonCoverCoverPhoto, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Plus.V1.Model.PersonCover do
  def encode(value, options) do
    GoogleApi.Plus.V1.Deserializer.serialize_non_nil(value, options)
  end
end

