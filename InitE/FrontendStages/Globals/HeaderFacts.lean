import InitE.FrontendStages.Globals.Metadata

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

/-! These metadata computations need names and shapes, never program bodies. -/
attribute [local cbv_opaque] Flapjack.Pancake.PanLang.progToHOL
attribute [local cbv_opaque] Flapjack.Pancake.PanLang.expToHOL
attribute [local cbv_opaque] Flapjack.fpermHOL

namespace InitE.FrontendStages.Declarations
open Flapjack Flapjack.Pancake.PanLang

theorem globalSize_eq : ((decShapesHOL simplifieds).map sizeOfShapeHOL).sum = 93 := by
  conv => lhs; cbv
  try rfl

theorem globalNewStart_eq : newMainNameHOL simplifieds = globalNewStart := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl

theorem sourceGlobalInitial_eq :
    ({ globals := HolFiniteMapExact.empty, globalsSize := 0,
       maxGlobalsSize := cakeBytesInWord 64 * BitVec.ofNat 64
         ((decShapesHOL (fpermDecsHOL globalStart globalNewStart
           (resortDeclsHOL simplifieds))).map sizeOfShapeHOL).sum } : PanGlobalsContextExact 64)
      = globalInitial := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl

#print axioms sourceGlobalInitial_eq
#print axioms globalSize_eq
#print axioms globalNewStart_eq
end InitE.FrontendStages.Declarations
