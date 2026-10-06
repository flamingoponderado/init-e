import InitE.BackendStages.TargetChecks.CorrectLabels0_450
import InitE.BackendStages.TargetChecks.CorrectEncode0_450
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_450
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_450_eq : LabToTarget.sectionLabels 305168 Reencode0_450.lines [] = (305700, localLabels1_450) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 305168 305700 riscvConfig.encode
    Initial450.lines Reencode0_450.lines [] Reencode0_450_eq).trans
    (localLabels0_450_eq.trans (by kernel_rfl))
#print axioms localLabels1_450_eq
end InitE.BackendStages.TargetChecks.Correct
