import HautevilleHouse.GradientBehaviorIsolatedLocallyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GradientBehaviorIsolatedLocallyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GradientBehaviorIsolatedLocallyClosed (A.object)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.gradientBehaviorClosed

end GradientBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse