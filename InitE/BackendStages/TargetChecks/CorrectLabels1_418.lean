import InitE.BackendStages.TargetChecks.CorrectLabels0_418
import InitE.BackendStages.TargetChecks.CorrectEncode0_418
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_418
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_418_eq : LabToTarget.sectionLabels 285912 Reencode0_418.lines [] = (286324, localLabels1_418) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 285912 286324 riscvConfig.encode
    Initial418.lines Reencode0_418.lines [] Reencode0_418_eq).trans
    (localLabels0_418_eq.trans (by kernel_rfl))
#print axioms localLabels1_418_eq
end InitE.BackendStages.TargetChecks.Correct
