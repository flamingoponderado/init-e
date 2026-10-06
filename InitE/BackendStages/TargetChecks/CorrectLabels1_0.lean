import InitE.BackendStages.TargetChecks.CorrectLabels0_0
import InitE.BackendStages.TargetChecks.CorrectEncode0_0
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_0
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_0_eq : LabToTarget.sectionLabels 0 Reencode0_0.lines [] = (780, localLabels1_0) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 0 780 riscvConfig.encode
    Initial0.lines Reencode0_0.lines [] Reencode0_0_eq).trans
    (localLabels0_0_eq.trans (by kernel_rfl))
#print axioms localLabels1_0_eq
end InitE.BackendStages.TargetChecks.Correct
