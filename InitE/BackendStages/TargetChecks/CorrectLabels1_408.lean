import InitE.BackendStages.TargetChecks.CorrectLabels0_408
import InitE.BackendStages.TargetChecks.CorrectEncode0_408
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_408
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_408_eq : LabToTarget.sectionLabels 280028 Reencode0_408.lines [] = (280548, localLabels1_408) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 280028 280548 riscvConfig.encode
    Initial408.lines Reencode0_408.lines [] Reencode0_408_eq).trans
    (localLabels0_408_eq.trans (by kernel_rfl))
#print axioms localLabels1_408_eq
end InitE.BackendStages.TargetChecks.Correct
