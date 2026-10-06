import InitE.BackendStages.TargetChecks.CorrectLabels0_94
import InitE.BackendStages.TargetChecks.CorrectEncode0_94
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_94
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_94_eq : LabToTarget.sectionLabels 11620 Reencode0_94.lines [] = (11972, localLabels1_94) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 11620 11972 riscvConfig.encode
    Initial94.lines Reencode0_94.lines [] Reencode0_94_eq).trans
    (localLabels0_94_eq.trans (by kernel_rfl))
#print axioms localLabels1_94_eq
end InitE.BackendStages.TargetChecks.Correct
