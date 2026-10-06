import InitE.BackendStages.TargetChecks.CorrectLabels0_395
import InitE.BackendStages.TargetChecks.CorrectEncode0_395
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_395
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_395_eq : LabToTarget.sectionLabels 273648 Reencode0_395.lines [] = (273956, localLabels1_395) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 273648 273956 riscvConfig.encode
    Initial395.lines Reencode0_395.lines [] Reencode0_395_eq).trans
    (localLabels0_395_eq.trans (by kernel_rfl))
#print axioms localLabels1_395_eq
end InitE.BackendStages.TargetChecks.Correct
