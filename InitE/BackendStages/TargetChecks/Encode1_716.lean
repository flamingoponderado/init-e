import InitE.BackendStages.TargetChecks.Data1_716
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_716_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 712212 riscvConfig.encode Reencode0_716.lines [] true = (Reencode1_716.lines, 712408, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_716_eq
end InitE.BackendStages.TargetChecks
