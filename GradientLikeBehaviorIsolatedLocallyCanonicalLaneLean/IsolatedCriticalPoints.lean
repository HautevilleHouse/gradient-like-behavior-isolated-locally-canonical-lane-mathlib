import HautevilleHouse.GradientBehaviorIsolatedLocallyCanonicalLaneLean.GradientBehaviorIsolatedLocally

namespace HautevilleHouse
namespace GradientBehaviorIsolatedLocallyCanonicalLaneLean

structure IsolatedCriticalPointsPackage (P : GradientBehaviorIsolatedLocallyPackage) where
  criticalPointsSet : Set P.manifold
  isolatedNeighborhoods : P.manifold → Set P.manifold
  gradientNonvanishing : P.manifold → Prop
  criticalPointsIsolated : Prop
  gradientNonvanishingAround : Prop

def IsolatedCriticalPointsClosed (C : IsolatedCriticalPointsPackage P) : Prop :=
  C.criticalPointsIsolated ∧ C.gradientNonvanishingAround

end GradientBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse