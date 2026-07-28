import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryNucleotideMetabolismCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NucleotideWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryNucleotideMetabolismCanonicalLaneLean
end HautevilleHouse