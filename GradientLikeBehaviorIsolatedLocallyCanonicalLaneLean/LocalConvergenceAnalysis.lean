import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean.GradientLikeBehavior

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure LocalConvergenceResult where
  system : GradientLikeSystem
  basinOfAttraction : ℝ → Prop
  convergenceRate : ℝ
  epsilonLocalization : ℝ
  basinContainsIsolatedSet : basinOfAttraction 0
  epsilonPositive : epsilonLocalization > 0

def local_convergence_closed (L : LocalConvergenceResult) : Prop :=
  L.epsilonPositive ∧ L.basinContainsIsolatedSet

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse