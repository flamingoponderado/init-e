import InitE.BackendStages.TargetChecks.CorrectLabels0_133
import InitE.BackendStages.TargetChecks.CorrectEncode0_133
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_133
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_133_eq : LabToTarget.sectionLabels 26760 Reencode0_133.lines [] = (27436, localLabels1_133) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 26760 27436 riscvConfig.encode
    Initial133.lines Reencode0_133.lines [] Reencode0_133_eq).trans
    (localLabels0_133_eq.trans (by kernel_rfl))
#print axioms localLabels1_133_eq
end InitE.BackendStages.TargetChecks.Correct
