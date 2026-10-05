import InitE.BackendStages.Metadata.Data888
import InitE.BackendStages.Filtered888
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis888_eq : ffiLines Filtered888.lines = localFfis888 := by
  with_unfolding_all rfl
theorem ffiStep888 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis888) : LabToTarget.findFfiNames (Filtered888 :: rest) = suffixFfis888 := by
  rw [findFfiNames_section, localFfis888_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep888
end InitE.BackendStages.Metadata
