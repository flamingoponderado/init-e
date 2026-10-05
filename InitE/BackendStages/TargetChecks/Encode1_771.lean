import InitE.BackendStages.TargetChecks.Data1_771
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem Reencode1_771_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 751388 riscvConfig.encode Reencode0_771.lines [] true = (Reencode1_771.lines, 751712, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_771_eq
end InitE.BackendStages.TargetChecks
