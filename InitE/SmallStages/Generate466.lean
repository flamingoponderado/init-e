import Tools.GenSmallStages
import InitE.SmallStages.Oracles466
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 466 InitE.WordStages.source466.2.1 InitE.WordStages.source466.2.2 InitE.SmallStages.Oracles466.oracle466
