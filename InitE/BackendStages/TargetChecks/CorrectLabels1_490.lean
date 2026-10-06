import InitE.BackendStages.TargetChecks.CorrectLabels0_490
import InitE.BackendStages.TargetChecks.CorrectEncode0_490
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_490
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_490_eq : LabToTarget.sectionLabels 345168 Reencode0_490.lines [] = (345480, localLabels1_490) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 345168 345480 riscvConfig.encode
    Initial490.lines Reencode0_490.lines [] Reencode0_490_eq).trans
    (localLabels0_490_eq.trans (by kernel_rfl))
#print axioms localLabels1_490_eq
end InitE.BackendStages.TargetChecks.Correct
