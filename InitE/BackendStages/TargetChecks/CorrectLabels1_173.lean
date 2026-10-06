import InitE.BackendStages.TargetChecks.CorrectLabels0_173
import InitE.BackendStages.TargetChecks.CorrectEncode0_173
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_173
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_173_eq : LabToTarget.sectionLabels 53328 Reencode0_173.lines [] = (53396, localLabels1_173) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 53328 53396 riscvConfig.encode
    Initial173.lines Reencode0_173.lines [] Reencode0_173_eq).trans
    (localLabels0_173_eq.trans (by kernel_rfl))
#print axioms localLabels1_173_eq
end InitE.BackendStages.TargetChecks.Correct
