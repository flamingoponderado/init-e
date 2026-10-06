import InitE.BackendStages.TargetChecks.CorrectLabels0_419
import InitE.BackendStages.TargetChecks.CorrectEncode0_419
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_419
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_419_eq : LabToTarget.sectionLabels 286324 Reencode0_419.lines [] = (286656, localLabels1_419) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 286324 286656 riscvConfig.encode
    Initial419.lines Reencode0_419.lines [] Reencode0_419_eq).trans
    (localLabels0_419_eq.trans (by kernel_rfl))
#print axioms localLabels1_419_eq
end InitE.BackendStages.TargetChecks.Correct
