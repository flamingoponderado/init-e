import InitE.BackendStages.TargetChecks.CorrectLabels0_387
import InitE.BackendStages.TargetChecks.CorrectEncode0_387
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_387
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_387_eq : LabToTarget.sectionLabels 266772 Reencode0_387.lines [] = (267432, localLabels1_387) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 266772 267432 riscvConfig.encode
    Initial387.lines Reencode0_387.lines [] Reencode0_387_eq).trans
    (localLabels0_387_eq.trans (by kernel_rfl))
#print axioms localLabels1_387_eq
end InitE.BackendStages.TargetChecks.Correct
