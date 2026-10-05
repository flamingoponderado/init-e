import InitE.BackendStages.TargetChecks.Data1_336
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_336_eq : LabToTarget.sectionLabels 232164 Reencode0_336.lines [] = (233712, localLabels1_336) := by
  with_unfolding_all rfl
#print axioms localLabels1_336_eq
end InitE.BackendStages.TargetChecks
