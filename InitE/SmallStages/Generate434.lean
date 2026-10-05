import Tools.GenSmallStages
import InitE.SmallStages.Oracles434
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 434 InitE.WordStages.source434.2.1 InitE.WordStages.source434.2.2 InitE.SmallStages.Oracles434.oracle434
