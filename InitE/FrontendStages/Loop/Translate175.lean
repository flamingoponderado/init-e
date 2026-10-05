import InitE.FrontendStages.Crep.Data175
import InitE.FrontendStages.Loop.Data175
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate175_eq :
    (239, List.range Crep.output175.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output175.2.1 (crepSimpProgHOL Crep.output175.2.2))) = output175 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate175_eq
end InitE.FrontendStages.Loop
