import InitE.BackendStages.TargetChecks.CorrectLabels0_377
import InitE.BackendStages.TargetChecks.CorrectEncode0_377
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_377
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_377_eq : LabToTarget.sectionLabels 257816 Reencode0_377.lines [] = (257840, localLabels1_377) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 257816 257840 riscvConfig.encode
    Initial377.lines Reencode0_377.lines [] Reencode0_377_eq).trans
    (localLabels0_377_eq.trans (by kernel_rfl))
#print axioms localLabels1_377_eq
end InitE.BackendStages.TargetChecks.Correct
