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

defmodule GoogleApi.Classroom.V1.Model.CourseWork do
  @moduledoc """
  Course work created by a teacher for students of the course.

  ## Attributes

  - alternateLink (String): Absolute link to this course work in the Classroom web UI. This is only populated if &#x60;state&#x60; is &#x60;PUBLISHED&#x60;.  Read-only. Defaults to: `null`.
  - assignment (Assignment): Assignment details. This is populated only when &#x60;work_type&#x60; is &#x60;ASSIGNMENT&#x60;.  Read-only. Defaults to: `null`.
  - associatedWithDeveloper (Boolean): Whether this course work item is associated with the Developer Console project making the request.  See google.classroom.Work.CreateCourseWork for more details.  Read-only. Defaults to: `null`.
  - courseId (String): Identifier of the course.  Read-only. Defaults to: `null`.
  - creationTime (String): Timestamp when this course work was created.  Read-only. Defaults to: `null`.
  - description (String): Optional description of this course work. If set, the description must be a valid UTF-8 string containing no more than 30,000 characters. Defaults to: `null`.
  - dueDate (DateTime): Optional date, in UTC, that submissions for this this course work are due. This must be specified if &#x60;due_time&#x60; is specified. Defaults to: `null`.
  - dueTime (TimeOfDay): Optional time of day, in UTC, that submissions for this this course work are due. This must be specified if &#x60;due_date&#x60; is specified. Defaults to: `null`.
  - id (String): Classroom-assigned identifier of this course work, unique per course.  Read-only. Defaults to: `null`.
  - materials (List[Material]): Additional materials.  CourseWork must have no more than 20 material items. Defaults to: `null`.
  - maxPoints (Float): Maximum grade for this course work. If zero or unspecified, this assignment is considered ungraded. This must be a non-negative integer value. Defaults to: `null`.
  - multipleChoiceQuestion (MultipleChoiceQuestion): Multiple choice question details. For read operations, this field is populated only when &#x60;work_type&#x60; is &#x60;MULTIPLE_CHOICE_QUESTION&#x60;. For write operations, this field must be specified when creating course work with a &#x60;work_type&#x60; of &#x60;MULTIPLE_CHOICE_QUESTION&#x60;, and it must not be set otherwise. Defaults to: `null`.
  - scheduledTime (String): Optional timestamp when this course work is scheduled to be published. Defaults to: `null`.
  - state (String): Status of this course work. If unspecified, the default state is &#x60;DRAFT&#x60;. Defaults to: `null`.
    - Enum - one of [COURSE_WORK_STATE_UNSPECIFIED, PUBLISHED, DRAFT, DELETED]
  - submissionModificationMode (String): Setting to determine when students are allowed to modify submissions. If unspecified, the default value is &#x60;MODIFIABLE_UNTIL_TURNED_IN&#x60;. Defaults to: `null`.
    - Enum - one of [SUBMISSION_MODIFICATION_MODE_UNSPECIFIED, MODIFIABLE_UNTIL_TURNED_IN, MODIFIABLE]
  - title (String): Title of this course work. The title must be a valid UTF-8 string containing between 1 and 3000 characters. Defaults to: `null`.
  - updateTime (String): Timestamp of the most recent change to this course work.  Read-only. Defaults to: `null`.
  - workType (String): Type of this course work.  The type is set when the course work is created and cannot be changed. Defaults to: `null`.
    - Enum - one of [COURSE_WORK_TYPE_UNSPECIFIED, ASSIGNMENT, SHORT_ANSWER_QUESTION, MULTIPLE_CHOICE_QUESTION]
  """

  defstruct [
    :"alternateLink",
    :"assignment",
    :"associatedWithDeveloper",
    :"courseId",
    :"creationTime",
    :"description",
    :"dueDate",
    :"dueTime",
    :"id",
    :"materials",
    :"maxPoints",
    :"multipleChoiceQuestion",
    :"scheduledTime",
    :"state",
    :"submissionModificationMode",
    :"title",
    :"updateTime",
    :"workType"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.CourseWork do
  import GoogleApi.Classroom.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"assignment", :struct, GoogleApi.Classroom.V1.Model.Assignment, options)
    |> deserialize(:"dueTime", :struct, GoogleApi.Classroom.V1.Model.TimeOfDay, options)
    |> deserialize(:"materials", :list, GoogleApi.Classroom.V1.Model.Material, options)
    |> deserialize(:"multipleChoiceQuestion", :struct, GoogleApi.Classroom.V1.Model.MultipleChoiceQuestion, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.CourseWork do
  def encode(value, options) do
    GoogleApi.Classroom.V1.Deserializer.serialize_non_nil(value, options)
  end
end

