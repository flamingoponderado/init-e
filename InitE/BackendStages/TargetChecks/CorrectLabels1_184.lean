import InitE.BackendStages.TargetChecks.CorrectLabels0_184
import InitE.BackendStages.TargetChecks.CorrectEncode0_184
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_184
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_184_eq : LabToTarget.sectionLabels 57668 Reencode0_184.lines [] = (60468, localLabels1_184) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 57668 60468 riscvConfig.encode
    Initial184.lines Reencode0_184.lines [] Reencode0_184_eq).trans
    (localLabels0_184_eq.trans (by kernel_rfl))
#print axioms localLabels1_184_eq
end InitE.BackendStages.TargetChecks.Correct
