import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.homeomorphicToSphere

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse