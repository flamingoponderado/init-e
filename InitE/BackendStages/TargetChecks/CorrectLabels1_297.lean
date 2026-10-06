import InitE.BackendStages.TargetChecks.CorrectLabels0_297
import InitE.BackendStages.TargetChecks.CorrectEncode0_297
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_297
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_297_eq : LabToTarget.sectionLabels 196224 Reencode0_297.lines [] = (196456, localLabels1_297) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 196224 196456 riscvConfig.encode
    Initial297.lines Reencode0_297.lines [] Reencode0_297_eq).trans
    (localLabels0_297_eq.trans (by kernel_rfl))
#print axioms localLabels1_297_eq
end InitE.BackendStages.TargetChecks.Correct
