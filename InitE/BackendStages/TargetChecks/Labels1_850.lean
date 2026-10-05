import InitE.BackendStages.TargetChecks.Data1_850
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_850_eq : LabToTarget.sectionLabels 921984 Reencode0_850.lines [] = (922736, localLabels1_850) := by
  with_unfolding_all rfl
#print axioms localLabels1_850_eq
end InitE.BackendStages.TargetChecks
