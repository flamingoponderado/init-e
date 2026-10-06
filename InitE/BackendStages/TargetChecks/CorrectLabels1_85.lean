import InitE.BackendStages.TargetChecks.CorrectLabels0_85
import InitE.BackendStages.TargetChecks.CorrectEncode0_85
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_85
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_85_eq : LabToTarget.sectionLabels 10120 Reencode0_85.lines [] = (10272, localLabels1_85) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 10120 10272 riscvConfig.encode
    Initial85.lines Reencode0_85.lines [] Reencode0_85_eq).trans
    (localLabels0_85_eq.trans (by kernel_rfl))
#print axioms localLabels1_85_eq
end InitE.BackendStages.TargetChecks.Correct
