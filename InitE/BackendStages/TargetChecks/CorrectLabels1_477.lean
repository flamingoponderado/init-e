import InitE.BackendStages.TargetChecks.CorrectLabels0_477
import InitE.BackendStages.TargetChecks.CorrectEncode0_477
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_477
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_477_eq : LabToTarget.sectionLabels 338344 Reencode0_477.lines [] = (338452, localLabels1_477) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 338344 338452 riscvConfig.encode
    Initial477.lines Reencode0_477.lines [] Reencode0_477_eq).trans
    (localLabels0_477_eq.trans (by kernel_rfl))
#print axioms localLabels1_477_eq
end InitE.BackendStages.TargetChecks.Correct
