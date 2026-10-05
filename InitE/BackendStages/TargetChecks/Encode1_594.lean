import InitE.BackendStages.TargetChecks.Data1_594
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_594_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 440692 riscvConfig.encode Reencode0_594.lines [] true = (Reencode1_594.lines, 441264, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_594_eq
end InitE.BackendStages.TargetChecks
