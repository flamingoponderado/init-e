import InitE.BackendStages.TargetChecks.CorrectLabels0_480
import InitE.BackendStages.TargetChecks.CorrectEncode0_480
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_480
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_480_eq : LabToTarget.sectionLabels 339272 Reencode0_480.lines [] = (339620, localLabels1_480) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 339272 339620 riscvConfig.encode
    Initial480.lines Reencode0_480.lines [] Reencode0_480_eq).trans
    (localLabels0_480_eq.trans (by kernel_rfl))
#print axioms localLabels1_480_eq
end InitE.BackendStages.TargetChecks.Correct
