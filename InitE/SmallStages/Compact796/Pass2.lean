import InitE.SmallStages.Compact796.Data
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.SmallOptimizerComputation InitE.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages
namespace InitE.SmallStages.Compact796
theorem pass2_eq : (let p0 := WordSimp.compileExp source796.2.2; let p1 := WordInst.instSelectExecutable riscvConfig (maxVarHOL p0 + 1) p0; WordAlloc.fullSsaCcTrans 5 p1) = pass2 := by
  conv => lhs; cbv
  try rfl
#print axioms pass2_eq
end InitE.SmallStages.Compact796
