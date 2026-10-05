import InitE.FrontendStages.Crep.Data818
import InitE.FrontendStages.Loop.Data818
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate818_eq :
    (882, List.range Crep.output818.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output818.2.1 (crepSimpProgHOL Crep.output818.2.2))) = output818 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate818_eq
end InitE.FrontendStages.Loop
