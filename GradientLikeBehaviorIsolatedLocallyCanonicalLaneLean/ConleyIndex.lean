import HautevilleHouse.GradientBehaviorIsolatedLocallyCanonicalLaneLean.IsolatedCriticalPoints

namespace HautevilleHouse
namespace GradientBehaviorIsolatedLocallyCanonicalLaneLean

structure ConleyIndexPackage (C : IsolatedCriticalPointsPackage P) where
  isolatingBlock : Set P.manifold
  indexMap : C.criticalPointsSet → Type u
  indexComputed : Prop
  continuationInvariant : Prop

def ConleyIndexClosed (I : ConleyIndexPackage C) : Prop :=
  I.indexComputed ∧ I.continuationInvariant

end GradientBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse