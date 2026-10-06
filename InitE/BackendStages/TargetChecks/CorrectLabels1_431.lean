import InitE.BackendStages.TargetChecks.CorrectLabels0_431
import InitE.BackendStages.TargetChecks.CorrectEncode0_431
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_431
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_431_eq : LabToTarget.sectionLabels 293960 Reencode0_431.lines [] = (294456, localLabels1_431) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 293960 294456 riscvConfig.encode
    Initial431.lines Reencode0_431.lines [] Reencode0_431_eq).trans
    (localLabels0_431_eq.trans (by kernel_rfl))
#print axioms localLabels1_431_eq
end InitE.BackendStages.TargetChecks.Correct
