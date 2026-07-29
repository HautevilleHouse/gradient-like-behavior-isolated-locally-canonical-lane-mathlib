import HautevilleHouse.GradientBehaviorIsolatedLocallyCanonicalLaneLean.ConleyIndex

namespace HautevilleHouse
namespace GradientBehaviorIsolatedLocallyCanonicalLaneLean

structure MorseBottDegeneracyPackage (I : ConleyIndexPackage C) where
  degenerateCriticalSet : Set P.manifold
  normalBundles : Type u
  morsificationExists : Prop
  localGradientStructure : Prop

def MorseBottDegeneracyClosed (M : MorseBottDegeneracyPackage I) : Prop :=
  M.morsificationExists ∧ M.localGradientStructure

end GradientBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse