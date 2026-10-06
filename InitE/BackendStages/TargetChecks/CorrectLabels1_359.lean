import InitE.BackendStages.TargetChecks.CorrectLabels0_359
import InitE.BackendStages.TargetChecks.CorrectEncode0_359
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_359
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_359_eq : LabToTarget.sectionLabels 245876 Reencode0_359.lines [] = (246684, localLabels1_359) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 245876 246684 riscvConfig.encode
    Initial359.lines Reencode0_359.lines [] Reencode0_359_eq).trans
    (localLabels0_359_eq.trans (by kernel_rfl))
#print axioms localLabels1_359_eq
end InitE.BackendStages.TargetChecks.Correct
