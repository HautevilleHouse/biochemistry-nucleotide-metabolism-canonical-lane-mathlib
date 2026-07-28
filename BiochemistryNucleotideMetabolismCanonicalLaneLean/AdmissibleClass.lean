import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryNucleotideMetabolismCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NucleotideMetabolismSpace where
  metabolite : Type
  concentration : metabolite → ℝ
  reactionNetwork : Type
  kinetics : reactionNetwork → ℝ

structure NucleotideMetabolismAdmittedObject where
  space : NucleotideMetabolismSpace
  fluxBalance : Prop
  thermodynamicFeasibility : Prop
  equilibriumConstant : ℝ
  conclusion : fluxBalance ∧ thermodynamicFeasibility

structure NucleotideEndgameState where
  object : NucleotideMetabolismAdmittedObject

def NucleotideWitnessClosed (O : NucleotideMetabolismAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : NucleotideMetabolismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NucleotideWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryNucleotideMetabolismCanonicalLaneLean
end HautevilleHouse