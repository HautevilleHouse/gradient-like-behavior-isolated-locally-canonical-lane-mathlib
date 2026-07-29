import HautevilleHouse.GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure GradientLikeFlowPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  vectorField : Type v
  smoothVectorField : Prop
  isolatedCriticalPoint : manifold
  gradientLikeCondition : Prop
  localBehavior : Prop

structure GradientLikeFlowEvidence (G : GradientLikeFlowPackage) where
  smoothVectorFieldClosed : G.smoothVectorField
  isolatedCriticalPointClosed : G.isolatedCriticalPoint = G.isolatedCriticalPoint
  gradientLikeConditionClosed : G.gradientLikeCondition
  localBehaviorClosed : G.localBehavior

def GradientLikeFlowClosed (G : GradientLikeFlowPackage) : Prop :=
  G.smoothVectorField ∧ G.gradientLikeCondition ∧ G.localBehavior

theorem gradient_like_flow_closed_from_evidence (G : GradientLikeFlowPackage)
    (E : GradientLikeFlowEvidence G) : GradientLikeFlowClosed G := by
  exact And.intro E.smoothVectorFieldClosed
    (And.intro E.gradientLikeConditionClosed E.localBehaviorClosed)

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse
