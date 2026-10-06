import InitE.BackendStages.TargetChecks.CorrectData1_492
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_492_eq : LabToTarget.sectionLabels 347308 Reencode0_492.lines [] = (347352, localLabels1_492) := by
  with_unfolding_all rfl
#print axioms localLabels1_492_eq
end InitE.BackendStages.TargetChecks.Correct
