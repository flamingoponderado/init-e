import Tools.GenSmallStages
import InitE.SmallStages.Oracles425
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 425 InitE.WordStages.source425.2.1 InitE.WordStages.source425.2.2 InitE.SmallStages.Oracles425.oracle425
