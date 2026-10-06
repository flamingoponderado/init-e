import InitE.BackendStages.TargetChecks.CorrectLabels0_439
import InitE.BackendStages.TargetChecks.CorrectEncode0_439
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_439
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_439_eq : LabToTarget.sectionLabels 299224 Reencode0_439.lines [] = (299728, localLabels1_439) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 299224 299728 riscvConfig.encode
    Initial439.lines Reencode0_439.lines [] Reencode0_439_eq).trans
    (localLabels0_439_eq.trans (by kernel_rfl))
#print axioms localLabels1_439_eq
end InitE.BackendStages.TargetChecks.Correct
