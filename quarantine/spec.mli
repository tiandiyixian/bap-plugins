open Core_kernel.Std
open Bap.Std
open Spec_types


module Constr : sig
  include module type of Constr with type t = Constr.t
  include Regular with type t := t
end

module V : sig
  include module type of V with type t = V.t
  include Regular with type t := t
end

module E : sig
  include module type of E with type t = E.t
  include Regular with type t := t
end

module Pat : sig
  include module type of Pat with type t = Pat.t
  include Regular with type t := t
end

module Rule : sig
  include module type of Rule with type t = Rule.t
  include Regular with type t := t
end

module Defn : sig
  include module type of Defn with type t = Defn.t
  include Regular with type t := t
end

module Spec : sig
  type t = defn list
  with bin_io, compare, sexp
  include Regular with type t := t
end