import canonicalLaneMathlib.AdmissibleClass
import GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean.GradientPersistence

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

def ConstrainedGradientClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gradient_endgame (A : AdmissibleClass) :
    ConstrainedGradientClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse