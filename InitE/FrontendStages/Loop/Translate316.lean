import InitE.FrontendStages.Crep.Data316
import InitE.FrontendStages.Loop.Data316
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate316_eq :
    (380, List.range Crep.output316.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output316.2.1 (crepSimpProgHOL Crep.output316.2.2))) = output316 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate316_eq
end InitE.FrontendStages.Loop
