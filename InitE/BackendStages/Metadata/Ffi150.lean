import InitE.BackendStages.Metadata.Data150
import InitE.BackendStages.Filtered150
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis150_eq : ffiLines Filtered150.lines = localFfis150 := by
  with_unfolding_all rfl
theorem ffiStep150 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis150) : LabToTarget.findFfiNames (Filtered150 :: rest) = suffixFfis150 := by
  rw [findFfiNames_section, localFfis150_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep150
end InitE.BackendStages.Metadata
