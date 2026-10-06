import InitE.BackendStages.TargetChecks.Data1_705
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_705_eq : LabToTarget.sectionLabels 659052 Reencode0_705.lines [] = (664352, localLabels1_705) := by
  with_unfolding_all rfl
#print axioms localLabels1_705_eq
end InitE.BackendStages.TargetChecks
