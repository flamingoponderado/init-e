import InitE.BackendStages.TargetChecks.CorrectLabels0_572
import InitE.BackendStages.TargetChecks.CorrectEncode0_572
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_572
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_572_eq : LabToTarget.sectionLabels 416292 Reencode0_572.lines [] = (417768, localLabels1_572) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 416292 417768 riscvConfig.encode
    Initial572.lines Reencode0_572.lines [] Reencode0_572_eq).trans
    (localLabels0_572_eq.trans (by kernel_rfl))
#print axioms localLabels1_572_eq
end InitE.BackendStages.TargetChecks.Correct
